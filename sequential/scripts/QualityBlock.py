import statistics
import numpy as np
import functions

class QualityBlock:
    def __init__(self, cdf_threshold):
        self.cdf_threshold = cdf_threshold

    @staticmethod
    def load_cdf(path):
        return functions.load_processed([path + "\\cdf.npz"])

    @staticmethod
    def calculate_cdf_probability(x, cdf):        
        x_index = np.searchsorted(cdf['x'], x, side="left")

        if x_index == len(cdf['y']):
            v = 1
        else:
            v = cdf['y'][x_index]

        return v

    @staticmethod
    def calculate_error(actual, predictions):
        errors = []
        for p in predictions:
            errors.append(pow(p - actual, 2))
        return errors

    def fault_detection(self, predictions, errors):
        threshold = self.cdf_threshold

        isSimilar = []
        probabilities = []
        for i in range(len(errors)):
            p = predictions[i]
            error = errors[i]
            cdf = self.load_cdf(p[0])
            ann_type = p[1]

            probability = self.calculate_cdf_probability(error, cdf)
            probabilities.append(probability)
            # print("probability: ", probability)
            # time.sleep(3)

            if probability < threshold:
                isSimilar.append((True, error, probability, ann_type))
            else:
                isSimilar.append((False, error, probability, ann_type))

        falses = [i for i in isSimilar if i[0] is False]
        # print(len(falses))
        trues = [i for i in isSimilar if i[0] is True]
        # if len(falses) > 0:
        if len(falses) == 1:
            """
            Different from 1 prediction.

            @Goncalo
            We start by considering the case where a single prediction is different from m. This can be the
            prediction that was produced based on past measurements of only the target sensor, the prediction
            that uses measurements from target and neighbour sensors, or, finally, the prediction based only
            on measurements from neighbour sensors. In the first case, it is possible to conclude with a high
            probability that the target sensor is being affected by a real physical event that produces a large
            difference with respect to past values, hence the measurement is not an outlier. This is supported
            by the fact that this event was reflected in the measurements of the other sensors and consequently
            on the predictions that use these measurements, both of which similar to m.

            @Joao
            Anything new to the logic of fault detection is added here
            """
            return True, probabilities #estava a False
        elif len(falses) == 2:
            """
            Different from 2 predictions.

            @Goncalo
            If m is significantly different from two predictions (and hence similar to a singular prediction),
            then only two cases are relevant and one is unlikely to occur. If m is similar to the prediction
            based on the target measurements, then the measurement is likely correct and the difference with
            the other predictions can be explained by an event affecting the neighbour sensors or a severe
            fault affecting only one of them. If m is similar to the prediction based only on the neighbours
            measurements, then it is possible to conclude that an event is forcing all measurements to take
            unexpected values. The prediction based only on neighbour sensors uses as input these unexpected
            values, which justifies that it is similar to m. On the other hand, the other predictions include the
            target past measurements that force the model to produce a value that is closer to the one that
            would be expected without an event. The case in which m is similar only to the prediction using all
            sensors is unlikely to occur because it does not make sense that a prediction using only neighbour
            sensors and the prediction using only the target sensor are similar to m but that one is not. 

            @Joao
            Anything new to the logic of fault detection is added here
            """
            return False, probabilities
        else:
            """
            Different from all predictions.

            @Goncalo
            Finally, the situation that is indicative of a faulty measurement m is the last possible one, when
            all predictions are different from m.

            @Joao
            Anything new to the logic of fault detection is added here
            """
            return False, probabilities #estava a True
        # else:
        #     return False, probabilities

    def quality_calculation(self, probabilities):
        return 1 - statistics.mean(probabilities)
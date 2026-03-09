function w = generate_delay_weights_reference(N, delay_min)
    DT_MIN = 5;
    dt_elapsed = (N:-1:1)' * DT_MIN;
    window = delay_min / 2;
    w = exp(-((dt_elapsed - delay_min).^2) / window^2);
    if sum(w) > 1e-9
        w = w / sum(w);
    end
end
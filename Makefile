NBC = nbc
OPTIMIZE = -Z2
FIRMWARE =

all: MotorControl22

%: %.nxc
	$(NBC) $(OPTIMIZE) $(FIRMWARE) -d $<

%.rxe: %.nxc
	$(NBC) $(OPTIMIZE) $(FIRMWARE) -O=$@ $<

WHAT-TO-PRINT = "its a macro"
LS-OUTPUT = $(shell ls -al)

ifeq ($(WHAT-TO-PRINT), 'its a macro')
	PRINT-VAL = 'matching'
else
	PRINT-VAL = 'Not matching'
endif


target:
	@echo "Hello World!"
	# call by make target
	# @at the beginning it should not show the command what if effects

# When its added below it will not work 
# ifeq ($(WHAT-TO-PRINT), "its a macro")
# 	PRINT-VAL = 'matching'
# else
# 	PRINT-VAL = 'Not matching'
# endif

target-depend-on-target: target
	@echo "Hello world again! by calling only 'make target-depend-on-target'"

print-macro:
	@echo $(WHAT-TO-PRINT)

print-shell-output:
	@echo $(LS-OUTPUT)

print-if-result:
	@echo $(PRINT-VAL)
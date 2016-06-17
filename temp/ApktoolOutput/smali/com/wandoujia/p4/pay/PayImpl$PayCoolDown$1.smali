.class Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown$1;
.super Landroid/os/CountDownTimer;
.source "PayImpl.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->coolDown:Z

    .line 793
    const-string v0, "PayImpl"

    const-string v1, "CD finished."

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter

    .prologue
    .line 788
    return-void
.end method

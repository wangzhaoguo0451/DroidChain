.class Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;
.super Ljava/lang/Object;
.source "PayImpl.java"


# static fields
.field static final COUNT_DOWN_LENGTH:I = 0x7d0


# instance fields
.field coolDown:Z

.field lastAction:Ljava/lang/String;

.field payCountDown:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->coolDown:Z

    .line 774
    const-string v0, "none"

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->lastAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method inCD(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x7d0

    .line 777
    const-string v0, "PayImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "inCD: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->coolDown:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->coolDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->lastAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->coolDown:Z

    .line 802
    :goto_0
    return v0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->payCountDown:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 784
    new-instance v0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown$1;-><init>(Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;JJ)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->payCountDown:Landroid/os/CountDownTimer;

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->payCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 799
    const-string v0, "PayImpl"

    const-string v1, "Start to CD... to Avoid duplicated click."

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->coolDown:Z

    .line 801
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->lastAction:Ljava/lang/String;

    .line 802
    const/4 v0, 0x0

    goto :goto_0
.end method

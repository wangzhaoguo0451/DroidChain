.class final Lcne;
.super Landroid/os/CountDownTimer;
.source "OneKeyRegisterRunnable.java"


# instance fields
.field private synthetic a:Lcnd;


# direct methods
.method constructor <init>(Lcnd;)V
    .locals 4
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcne;->a:Lcnd;

    const-wide/32 v0, 0x927c0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Ld;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcne;->a:Lcnd;

    iget-object v1, v1, Lcnd;->a:Lcnc;

    invoke-static {v1}, Lcnc;->b(Lcnc;)Lcnf;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    iget-object v0, p0, Lcne;->a:Lcnd;

    iget-object v0, v0, Lcnd;->a:Lcnc;

    invoke-static {v0}, Lcnc;->a(Lcnc;)Landroid/os/CountDownTimer;

    .line 71
    return-void
.end method

.method public final onTick(J)V
    .locals 0
    .parameter

    .prologue
    .line 64
    return-void
.end method

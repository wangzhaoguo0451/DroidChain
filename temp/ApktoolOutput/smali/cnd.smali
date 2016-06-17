.class final Lcnd;
.super Ljava/lang/Object;
.source "OneKeyRegisterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcnc;


# direct methods
.method constructor <init>(Lcnc;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcnd;->a:Lcnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcnd;->a:Lcnc;

    new-instance v1, Lcne;

    invoke-direct {v1, p0}, Lcne;-><init>(Lcnd;)V

    iput-object v1, v0, Lcnc;->e:Landroid/os/CountDownTimer;

    .line 73
    iget-object v0, p0, Lcnd;->a:Lcnc;

    iget-object v0, v0, Lcnc;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 74
    return-void
.end method

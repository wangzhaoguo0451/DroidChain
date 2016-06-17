.class final Lesw;
.super Ljava/util/TimerTask;
.source "AccountChangePasswordActivity.java"


# instance fields
.field private synthetic a:Lesv;


# direct methods
.method constructor <init>(Lesv;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lesw;->a:Lesv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lesw;->a:Lesv;

    iget-object v0, v0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

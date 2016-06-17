.class final Lcoo;
.super Ljava/util/TimerTask;
.source "AccountEditText.java"


# instance fields
.field private synthetic a:Lcon;


# direct methods
.method constructor <init>(Lcon;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcoo;->a:Lcon;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcoo;->a:Lcon;

    iget-object v0, v0, Lcon;->a:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-static {v0}, Lcom/wandoujia/account/widget/AccountEditText;->d(Lcom/wandoujia/account/widget/AccountEditText;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

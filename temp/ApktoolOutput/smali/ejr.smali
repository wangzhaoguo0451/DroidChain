.class final Lejr;
.super Ljava/lang/Object;
.source "PhoenixAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lejq;


# direct methods
.method constructor <init>(Lejq;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lejr;->a:Lejq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lejr;->a:Lejq;

    invoke-static {v1}, Lejq;->a(Lejq;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lejr;->a:Lejq;

    invoke-static {v1}, Lejq;->b(Lejq;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v0, p0, Lejr;->a:Lejq;

    invoke-static {v0}, Lejq;->b(Lejq;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    :cond_1
    iget-object v0, p0, Lejr;->a:Lejq;

    iget-object v1, v0, Lejq;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lejr;->a:Lejq;

    invoke-static {v1}, Lejq;->c(Lejq;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lejr;->a:Lejq;

    invoke-static {v1}, Lejq;->d(Lejq;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    iget-object v0, p0, Lejr;->a:Lejq;

    invoke-static {v0}, Lejq;->d(Lejq;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lejr;->a:Lejq;

    invoke-static {v1}, Lejq;->e(Lejq;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lejr;->a:Lejq;

    invoke-static {v1}, Lejq;->f(Lejq;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lejr;->a:Lejq;

    invoke-static {v0}, Lejq;->f(Lejq;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

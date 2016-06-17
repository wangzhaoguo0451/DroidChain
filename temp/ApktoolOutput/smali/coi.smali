.class final Lcoi;
.super Ljava/lang/Object;
.source "AccountBaseAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcoh;


# direct methods
.method constructor <init>(Lcoh;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcoi;->a:Lcoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcoi;->a:Lcoh;

    invoke-static {v1}, Lcoh;->a(Lcoh;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcoi;->a:Lcoh;

    invoke-static {v1}, Lcoh;->b(Lcoh;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v0, p0, Lcoi;->a:Lcoh;

    invoke-static {v0}, Lcoh;->b(Lcoh;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 85
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    :cond_1
    iget-object v0, p0, Lcoi;->a:Lcoh;

    invoke-static {v0}, Lcoh;->g(Lcoh;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcoi;->a:Lcoh;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void

    .line 80
    :cond_2
    iget-object v1, p0, Lcoi;->a:Lcoh;

    invoke-static {v1}, Lcoh;->c(Lcoh;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcoi;->a:Lcoh;

    invoke-static {v1}, Lcoh;->d(Lcoh;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 81
    iget-object v0, p0, Lcoi;->a:Lcoh;

    invoke-static {v0}, Lcoh;->d(Lcoh;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_3
    iget-object v1, p0, Lcoi;->a:Lcoh;

    invoke-static {v1}, Lcoh;->e(Lcoh;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcoi;->a:Lcoh;

    invoke-static {v1}, Lcoh;->f(Lcoh;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v0, p0, Lcoi;->a:Lcoh;

    invoke-static {v0}, Lcoh;->f(Lcoh;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

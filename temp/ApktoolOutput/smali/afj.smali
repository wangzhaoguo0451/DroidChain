.class final Lafj;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private synthetic a:Lafg;


# direct methods
.method constructor <init>(Lafg;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafj;->a:Lafg;

    .line 167
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lafj;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lafj;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lafj;->a:Lafg;

    iget-object v0, v0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lafj;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lafj;->a:Lafg;

    iget-object v1, v1, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 5
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lafj;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lafj;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lafj;->a:Lafg;

    invoke-static {v1}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "mini_countdown_info"

    invoke-static {v3}, Lg;->g(Ljava/lang/String;)I

    move-result v3

    .line 175
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v0, "\r\n("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

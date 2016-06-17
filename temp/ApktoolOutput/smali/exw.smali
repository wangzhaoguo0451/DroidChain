.class final Lexw;
.super Ljava/lang/Object;
.source "CleanFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lexv;


# direct methods
.method constructor <init>(Lexv;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lexw;->b:Lexv;

    iput p2, p0, Lexw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lexw;->b:Lexv;

    iget-object v0, v0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->b(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lexw;->b:Lexv;

    iget-object v0, v0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 53
    iget-object v0, p0, Lexw;->b:Lexv;

    iget-object v0, v0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lexw;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lexw;->b:Lexv;

    iget-object v0, v0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    return-void
.end method

.class public final Lexy;
.super Ljava/lang/Object;
.source "CleanFragment.java"

# interfaces
.implements Leyd;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    iput p2, p0, Lexy;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyk;

    move-result-object v0

    iget v1, p0, Lexy;->a:I

    invoke-static {v1}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 100
    iget-object v0, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lexy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->b(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyk;

    move-result-object v0

    invoke-static {p1}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 93
    iget-object v0, p0, Lexy;->b:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->d(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

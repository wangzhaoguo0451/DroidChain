.class final Lezk;
.super Ljava/lang/Object;
.source "CleanCell.java"

# interfaces
.implements Leyd;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

.field private synthetic b:I

.field private synthetic c:Lezf;


# direct methods
.method constructor <init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lezk;->c:Lezf;

    iput-object p2, p0, Lezk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    iput p3, p0, Lezk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lezk;->c:Lezf;

    iget-object v0, v0, Lezf;->a:Leyk;

    iget v1, p0, Lezk;->b:I

    invoke-static {v1}, Lezf;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 145
    iget-object v0, p0, Lezk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getProgressText()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lezk;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lezk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getStatusText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lezk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lezk;->c:Lezf;

    iget-object v0, v0, Lezf;->a:Leyk;

    invoke-static {p1}, Lezf;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 138
    iget-object v0, p0, Lezk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getProgressText()Landroid/widget/TextView;

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

    .line 140
    return-void

    .line 138
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

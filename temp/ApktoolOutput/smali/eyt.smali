.class public final Leyt;
.super Legg;
.source "ALAppCell.java"


# instance fields
.field private a:Lfah;

.field private g:Lfan;


# direct methods
.method public constructor <init>(Lfah;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Legg;-><init>()V

    .line 21
    iput-object p1, p0, Leyt;->a:Lfah;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Leyu;

    invoke-direct {v0}, Leyu;-><init>()V

    .line 29
    invoke-static {p2}, Lfan;->c(Landroid/view/ViewGroup;)Lfan;

    move-result-object v0

    iput-object v0, p0, Leyt;->g:Lfan;

    .line 30
    iget-object v0, p0, Leyt;->g:Lfan;

    iget-object v1, p0, Leyt;->a:Lfah;

    invoke-static {v0, v1}, Leyu;->a(Lfan;Lfah;)V

    .line 31
    iget-object v0, p0, Leyt;->g:Lfan;

    iget-object v0, v0, Lfan;->b:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    iget-object v1, p0, Leyt;->a:Lfah;

    iget-object v1, v1, Lfah;->a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a:Lcom/wandoujia/image/view/AsyncImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Leyt;->g:Lfan;

    iget-object v0, v0, Lfan;->c:Landroid/widget/TextView;

    iget-object v1, p0, Leyt;->a:Lfah;

    iget-object v1, v1, Lfah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Leyt;->g:Lfan;

    invoke-virtual {v0}, Lfan;->getView()Landroid/view/View;

    move-result-object p1

    .line 35
    :cond_0
    return-object p1
.end method

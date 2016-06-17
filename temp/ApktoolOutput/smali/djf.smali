.class final Ldjf;
.super Ljava/lang/Object;
.source "AppUpgradeDescriptionPresenter.java"

# interfaces
.implements Lgqb;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Ldjf;->a:Landroid/widget/TextView;

    iput-object p2, p0, Ldjf;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Ldjf;->a:Landroid/widget/TextView;

    iget-object v1, p0, Ldjf;->b:Lcom/wandoujia/ripple_framework/model/Model;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ldje;->a(ZLcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Ldjf;->a:Landroid/widget/TextView;

    iget-object v1, p0, Ldjf;->b:Lcom/wandoujia/ripple_framework/model/Model;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ldje;->a(ZLcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

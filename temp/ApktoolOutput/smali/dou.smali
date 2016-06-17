.class public final Ldou;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 800
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    .line 801
    invoke-virtual {p0}, Ldou;->e()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v2

    const v3, 0x7f0e03b3

    invoke-virtual {v2, v3}, Lcom/wandoujia/jupiter/JupiterApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    return-void
.end method

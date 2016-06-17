.class public final Leyy;
.super Ljava/lang/Object;
.source "ALFunctionIconController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lfan;",
        "Lfai;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lfan;Lfai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p0, p1}, Leyy;->c(Lfan;Lfai;)V

    return-void
.end method

.method private static c(Lfan;Lfai;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 42
    iget-object v0, p0, Lfan;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 43
    iget-boolean v0, p1, Lfai;->b:Z

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lfan;->c:Landroid/widget/TextView;

    .line 45
    iget-object v1, p1, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->title:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 47
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 48
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    const-string v1, "  "

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual {v4, v7, v7, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    new-instance v1, Leza;

    invoke-direct {v1, v4}, Leza;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 52
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x11

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    iget-object v0, p0, Lfan;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lfan;Lfai;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p1, Lfan;->a:Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lfan;->a:Lcom/wandoujia/image/view/AsyncImageView;

    new-instance v1, Lcom/wandoujia/image/ImageUri;

    invoke-virtual {p2}, Lfai;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/image/ImageUri$ImageUriType;->UNSPECIFIED:Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/image/ImageUri;-><init>(Ljava/lang/String;Lcom/wandoujia/image/ImageUri$ImageUriType;)V

    const v2, 0x7f0a0044

    invoke-static {v0, v1, v2}, Ld;->a(Lcom/wandoujia/image/view/AsyncImageView;Lcom/wandoujia/image/ImageUri;I)V

    .line 28
    :cond_0
    invoke-static {p1, p2}, Leyy;->c(Lfan;Lfai;)V

    .line 29
    invoke-virtual {p1}, Lfan;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lfai;->c()Lcom/wandoujia/mvc/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfan;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Leyz;

    invoke-direct {v1, p0, p2, p1}, Leyz;-><init>(Leyy;Lfai;Lfan;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_1
    return-void
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lfan;

    check-cast p2, Lfai;

    invoke-virtual {p0, p1, p2}, Leyy;->a(Lfan;Lfai;)V

    return-void
.end method

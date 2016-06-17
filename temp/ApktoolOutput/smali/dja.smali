.class public final Ldja;
.super Lhic;
.source "AppInstalledSpinnerPresenter.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Ldja;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lhic;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .parameter

    .prologue
    .line 23
    sput p0, Ldja;->a:I

    return p0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Ldja;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0353

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/Spinner;

    .line 30
    new-instance v2, Ldjc;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ldjc;-><init>(B)V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ldja;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080018

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ldjd;

    invoke-direct {v5, v1}, Ldjd;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ldjc;->a(Ljava/util/List;)V

    .line 33
    new-instance v1, Ldjb;

    invoke-direct {v1}, Ldjb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->setOnMenuSelectListener(Lhnr;)V

    .line 47
    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/Spinner;->setAdapter(Lhns;)V

    .line 49
    sget v1, Ldja;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->a(I)V

    .line 50
    return-void
.end method

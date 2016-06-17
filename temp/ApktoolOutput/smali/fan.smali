.class public final Lfan;
.super Ljava/lang/Object;
.source "ALIconView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Lcom/wandoujia/image/view/AsyncImageView;

.field public b:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

.field public c:Landroid/widget/TextView;

.field private d:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c0023

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lfan;->d:Landroid/view/View;

    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    :goto_0
    iput-object v0, p0, Lfan;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 41
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    :goto_1
    iput-object v0, p0, Lfan;->b:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    .line 42
    if-eqz p1, :cond_2

    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/TextView;

    :goto_2
    iput-object v0, p0, Lfan;->c:Landroid/widget/TextView;

    .line 43
    return-void

    :cond_0
    move-object v0, v1

    .line 40
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 41
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 42
    goto :goto_2
.end method

.method public static a(Landroid/view/ViewGroup;)Lfan;
    .locals 2
    .parameter

    .prologue
    .line 25
    new-instance v0, Lfan;

    const v1, 0x7f030083

    invoke-static {p0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lfan;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;)Lfan;
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Lfan;

    const v1, 0x7f030085

    invoke-static {p0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lfan;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static c(Landroid/view/ViewGroup;)Lfan;
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Lfan;

    const v1, 0x7f030084

    invoke-static {p0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lfan;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lfan;->d:Landroid/view/View;

    return-object v0
.end method

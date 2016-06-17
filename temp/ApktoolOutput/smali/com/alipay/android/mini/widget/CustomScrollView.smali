.class public Lcom/alipay/android/mini/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/widget/CustomScrollView;Landroid/widget/EditText;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getLocationInWindow([I)V

    aget v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v0, v0, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/mini/widget/CustomScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lxg;

    invoke-direct {v0, p0}, Lxg;-><init>(Lcom/alipay/android/mini/widget/CustomScrollView;)V

    .line 50
    const-wide/16 v2, 0x12c

    .line 38
    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/mini/widget/CustomScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " custom scroll view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    sub-int v0, p4, p2

    if-lez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->a()V

    .line 35
    :cond_0
    return-void
.end method

.class public final Lehx;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    sget v0, Lcom/wandoujia/launcher_base/R$id;->tag_layout_id:I

    sput v0, Lehx;->a:I

    return-void
.end method

.method public static a(II)Landroid/text/style/DynamicDrawableSpan;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    int-to-float v1, p0

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 125
    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    :cond_0
    new-instance v1, Lehy;

    invoke-direct {v1, v0}, Lehy;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    invoke-static {v0, p1}, Lehx;->a(Landroid/view/View;I)V

    .line 162
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lehz;

    invoke-direct {v1, p0}, Lehz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 87
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 180
    sget v0, Lehx;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 181
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    const v0, 0x7f0c022e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    return-void

    .line 51
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static a(Lcom/wandoujia/image/view/AsyncImageView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    new-instance v0, Lcom/wandoujia/image/ImageUri;

    sget-object v1, Lcom/wandoujia/image/ImageUri$ImageUriType;->UNSPECIFIED:Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/image/ImageUri;-><init>(Ljava/lang/String;Lcom/wandoujia/image/ImageUri$ImageUriType;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ld;->a(Lcom/wandoujia/image/view/AsyncImageView;Lcom/wandoujia/image/ImageUri;I)V

    .line 64
    :cond_0
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 174
    invoke-static {v0, p1}, Lehx;->a(Landroid/view/View;I)V

    .line 175
    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 97
    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 107
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    return-void

    .line 107
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    if-eqz p0, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    return-void
.end method

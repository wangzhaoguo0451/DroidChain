.class public Lcom/wandoujia/ripple_framework/view/CustomFontTextView;
.super Landroid/widget/TextView;
.source "CustomFontTextView.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->NORMAL:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->ordinal()I

    move-result v0

    sput v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->CustomFontTextView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->CustomFontTextView_fontName:I

    sget v2, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    const-string v0, "com.wandoujia.phoenix2"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lham;->f:Lham;

    const-string v2, "type_face"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/TypefaceManager;

    invoke-static {v1}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->getFont(I)Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/TypefaceManager;->a(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 95
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 100
    :try_start_0
    check-cast v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "mEditor"

    invoke-static {p0, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "selectCurrentWord"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    sget-object v1, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->a:Ljava/lang/String;

    const-string v2, "select current word %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setFont(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    sget-object v0, Lham;->f:Lham;

    const-string v1, "type_face"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/TypefaceManager;

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/TypefaceManager;->a(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    :cond_0
    return-void
.end method

.class public final Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder;
.super Ljava/lang/Object;
.source "ToolbarMenuThemeBinder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->open_app:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->share_operation:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->close:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->unfavorited:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->fav_number:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->share_number:I

    aput v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder;->a:[I

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v2, v0, :cond_2

    .line 38
    sget-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder;->a:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    iget v3, p1, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->drawableLevel:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 43
    :cond_0
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    iget v0, p1, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->textColor:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

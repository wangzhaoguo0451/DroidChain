.class public Landroid/support/v7/internal/widget/TintImageView;
.super Landroid/widget/ImageView;
.source "TintImageView.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lrb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/TintImageView;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd4t 0x0t 0x1t 0x1t
        0x19t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/TintImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/internal/widget/TintImageView;->a:[I

    invoke-static {v0, p2, v1, p3}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v0

    .line 51
    iget-object v1, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    invoke-virtual {v0, v2}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Lrd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    invoke-virtual {v0, v3}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v0, v3}, Lrd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    iget-object v1, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintImageView;->b:Lrb;

    .line 63
    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintImageView;->b:Lrb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lrb;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

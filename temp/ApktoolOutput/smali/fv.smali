.class public final Lfv;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field private static a:Lfz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lfy;

    invoke-direct {v0}, Lfy;-><init>()V

    sput-object v0, Lfv;->a:Lfz;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Lfx;

    invoke-direct {v0}, Lfx;-><init>()V

    sput-object v0, Lfv;->a:Lfz;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    sput-object v0, Lfv;->a:Lfz;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lfz;

    invoke-direct {v0}, Lfz;-><init>()V

    sput-object v0, Lfv;->a:Lfz;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 444
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0, p1}, Lfz;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 453
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0, p1}, Lfz;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 462
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0, p1}, Lfz;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 479
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0}, Lfz;->a(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0, p1}, Lfz;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 488
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0}, Lfz;->b(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 501
    sget-object v0, Lfv;->a:Lfz;

    invoke-virtual {v0, p0, p1}, Lfz;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

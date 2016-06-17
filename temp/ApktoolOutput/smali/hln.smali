.class public final Lhln;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field public final a:Lhlq;

.field public b:Z

.field public c:Z

.field public d:Landroid/view/View;

.field private f:Z

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 46
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "qemu.hw.mainkeys"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lhln;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    sput-object v5, Lhln;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/high16 v8, -0x6700

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v5, p0, Lhln;->g:I

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 90
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 92
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lhln;->b:Z

    .line 93
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lhln;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 100
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 102
    iput-boolean v7, p0, Lhln;->b:Z

    .line 104
    :cond_0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 106
    iput-boolean v7, p0, Lhln;->f:Z

    .line 110
    :cond_1
    new-instance v1, Lhlq;

    invoke-direct {v1, p1, v5}, Lhlq;-><init>(Landroid/app/Activity;B)V

    iput-object v1, p0, Lhln;->a:Lhlq;

    .line 112
    iget-object v1, p0, Lhln;->a:Lhlq;

    iget-boolean v1, v1, Lhlq;->b:Z

    if-nez v1, :cond_2

    .line 113
    iput-boolean v5, p0, Lhln;->f:Z

    .line 116
    :cond_2
    iget-boolean v1, p0, Lhln;->b:Z

    if-eqz v1, :cond_4

    .line 117
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhln;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lhln;->a:Lhlq;

    iget v2, v2, Lhlq;->a:I

    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v2, p0, Lhln;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lhln;->a:Lhlq;

    invoke-virtual {v2}, Lhlq;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lhln;->a:Lhlq;

    iget v2, v2, Lhlq;->d:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_3
    iget-object v2, p0, Lhln;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lhln;->d:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lhln;->d:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lhln;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_4
    iget-boolean v1, p0, Lhln;->f:Z

    if-eqz v1, :cond_5

    .line 120
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhln;->h:Landroid/view/View;

    iget-object v1, p0, Lhln;->a:Lhlq;

    invoke-virtual {v1}, Lhlq;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lhln;->a:Lhlq;

    iget v2, v2, Lhlq;->c:I

    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v2, p0, Lhln;->h:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lhln;->h:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lhln;->h:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lhln;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_5
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 120
    :cond_6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lhln;->a:Lhlq;

    iget v2, v2, Lhlq;->d:I

    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 88
    nop

    :array_0
    .array-data 0x4
        0xeft 0x3t 0x1t 0x1t
        0xf0t 0x3t 0x1t 0x1t
    .end array-data
.end method

.method static synthetic a(Lhln;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lhln;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lhln;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 254
    iget-boolean v0, p0, Lhln;->b:Z

    if-eqz v0, :cond_0

    .line 255
    iput p1, p0, Lhln;->g:I

    .line 256
    iget-object v0, p0, Lhln;->d:Landroid/view/View;

    iget v1, p0, Lhln;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    :cond_0
    return-void
.end method

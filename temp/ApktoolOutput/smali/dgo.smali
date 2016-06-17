.class public Ldgo;
.super Ljava/lang/Object;
.source "WrapMotionEvent.java"


# instance fields
.field protected a:Landroid/view/MotionEvent;


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ldgo;->a:Landroid/view/MotionEvent;

    .line 18
    return-void
.end method

.method public static a(Landroid/view/MotionEvent;)Ldgo;
    .locals 1
    .parameter

    .prologue
    .line 22
    :try_start_0
    new-instance v0, Ldgj;

    invoke-direct {v0, p0}, Ldgj;-><init>(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ldgo;

    invoke-direct {v0, p0}, Ldgo;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private static c(I)V
    .locals 2
    .parameter

    .prologue
    .line 60
    if-lez p0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pointer index for Donut/Cupcake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Ldgo;->c(I)V

    .line 38
    iget-object v0, p0, Ldgo;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldgo;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldgo;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public b(I)F
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-static {p1}, Ldgo;->c(I)V

    .line 47
    iget-object v0, p0, Ldgo;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ldgo;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

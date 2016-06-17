.class final Lddb;
.super Ljava/lang/Object;
.source "JupiterItemAnimator.java"


# instance fields
.field public a:Lux;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>(Lux;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lddb;->a:Lux;

    .line 78
    iput p2, p0, Lddb;->b:I

    .line 79
    iput p3, p0, Lddb;->c:I

    .line 80
    iput p4, p0, Lddb;->d:I

    .line 81
    iput p5, p0, Lddb;->e:I

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lux;IIIIB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lddb;-><init>(Lux;IIII)V

    return-void
.end method

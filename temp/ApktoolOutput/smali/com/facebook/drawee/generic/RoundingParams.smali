.class public final Lcom/facebook/drawee/generic/RoundingParams;
.super Ljava/lang/Object;
.source "RoundingParams.java"


# instance fields
.field public a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

.field public b:Z

.field public c:[F

.field public d:I

.field public e:F

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 41
    iput-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 43
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    .line 45
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    return-void
.end method

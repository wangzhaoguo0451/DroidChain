.class public final Lams;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# static fields
.field public static final a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# instance fields
.field public c:Landroid/content/res/Resources;

.field public d:I

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public n:Landroid/graphics/Matrix;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lams;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 38
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lams;->b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lams;->c:Landroid/content/res/Resources;

    .line 69
    const/16 v0, 0x12c

    iput v0, p0, Lams;->d:I

    iput-object v1, p0, Lams;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lams;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v1, p0, Lams;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lams;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v1, p0, Lams;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lams;->j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v1, p0, Lams;->k:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lams;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v0, Lams;->b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v0, p0, Lams;->m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v1, p0, Lams;->o:Ljava/util/List;

    iput-object v1, p0, Lams;->p:Ljava/util/List;

    iput-object v1, p0, Lams;->q:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lams;->r:Lcom/facebook/drawee/generic/RoundingParams;

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Lamv;
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lams;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lams;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lams;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lams;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 431
    :cond_1
    new-instance v0, Lamv;

    invoke-direct {v0, p0}, Lamv;-><init>(Lams;)V

    return-object v0
.end method

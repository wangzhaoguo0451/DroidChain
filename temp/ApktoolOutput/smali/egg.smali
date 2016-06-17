.class public abstract Legg;
.super Ljava/lang/Object;
.source "LauncherCell.java"


# static fields
.field private static a:I

.field public static final b:I


# instance fields
.field final c:I

.field public d:Landroid/graphics/Point;

.field public e:Lehw;

.field public f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/wandoujia/launcher_base/R$id;->launcher_cell:I

    sput v0, Legg;->b:I

    .line 19
    const/4 v0, 0x0

    sput v0, Legg;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Legg;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Legg;->a:I

    .line 29
    sget v0, Legg;->a:I

    iput v0, p0, Legg;->c:I

    .line 30
    new-instance v0, Lehw;

    invoke-direct {v0, v1, v1}, Lehw;-><init>(II)V

    iput-object v0, p0, Legg;->e:Lehw;

    .line 31
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Legg;->c:I

    .line 35
    new-instance v0, Lehw;

    invoke-direct {v0, v1, v1}, Lehw;-><init>(II)V

    iput-object v0, p0, Legg;->e:Lehw;

    .line 36
    return-void
.end method

.method public static c(Landroid/view/View;)Legg;
    .locals 2
    .parameter

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    sget v0, Legg;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    instance-of v1, v0, Legg;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Legg;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public a(Legh;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Legg;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 131
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    iget-object v1, p0, Legg;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method

.class public final Lamb;
.super Ljava/lang/Object;
.source "DrawableProperties.java"


# instance fields
.field public a:I

.field public b:Landroid/graphics/ColorFilter;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xff

    iput v0, p0, Lamb;->a:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lamb;->b:Landroid/graphics/ColorFilter;

    .line 18
    iput-boolean v1, p0, Lamb;->c:Z

    .line 19
    iput-boolean v1, p0, Lamb;->d:Z

    return-void
.end method

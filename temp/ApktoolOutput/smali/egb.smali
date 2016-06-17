.class public final Legb;
.super Ljava/lang/Object;
.source "LauncherCellAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Legg;",
            ">;"
        }
    .end annotation
.end field

.field public b:Legc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Legb;->a:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Legb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(Legg;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Legb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Legb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Legb;->b:Legc;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Legb;->b:Legc;

    iget-object v0, v0, Legc;->a:Legi;

    invoke-static {v0}, Legi;->b(Legi;)V

    .line 84
    :cond_0
    return-void
.end method

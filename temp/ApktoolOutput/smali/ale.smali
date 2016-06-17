.class public final Lale;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lakd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lakd",
        "<",
        "Lalb",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakd",
            "<",
            "Lalb",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakd",
            "<",
            "Lalb",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Ld;->a(ZLjava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lale;->a:Ljava/util/List;

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lalf;

    invoke-direct {v0, p0}, Lalf;-><init>(Lale;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_0
    instance-of v0, p1, Lale;

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    check-cast p1, Lale;

    .line 63
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    iget-object v1, p1, Lale;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ld;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    invoke-static {p0}, Ld;->c(Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lale;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

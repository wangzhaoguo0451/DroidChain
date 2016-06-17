.class final Lalv;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lakd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakd",
        "<",
        "Lalb",
        "<TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Z

.field private synthetic d:Lalt;


# direct methods
.method constructor <init>(Lalt;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lalv;->d:Lalt;

    iput-object p2, p0, Lalv;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lalv;->b:Ljava/lang/Object;

    iput-boolean p4, p0, Lalv;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lalv;->d:Lalt;

    iget-object v1, p0, Lalv;->a:Ljava/lang/Object;

    iget-object v2, p0, Lalv;->b:Ljava/lang/Object;

    iget-boolean v3, p0, Lalv;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lalt;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Lalb;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    invoke-static {p0}, Ld;->c(Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "request"

    iget-object v2, p0, Lalv;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

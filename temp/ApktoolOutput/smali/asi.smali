.class public final Lasi;
.super Ljava/lang/Object;
.source "BranchOnSeparateImagesProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laud;Laud;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;",
            "Laud",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lasi;->b:Laud;

    .line 29
    iput-object p2, p0, Lasi;->a:Laud;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lasj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lasj;-><init>(Lasi;Lask;Laue;B)V

    .line 37
    iget-object v1, p0, Lasi;->b:Laud;

    invoke-interface {v1, v0, p2}, Laud;->a(Lask;Laue;)V

    .line 38
    return-void
.end method

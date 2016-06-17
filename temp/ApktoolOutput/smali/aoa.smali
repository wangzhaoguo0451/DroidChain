.class final Laoa;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lwc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwc",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lwd;

.field private synthetic b:I

.field private synthetic c:Lanw;


# direct methods
.method constructor <init>(Lanw;Lwd;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Laoa;->c:Lanw;

    iput-object p2, p0, Laoa;->a:Lwd;

    iput p3, p0, Laoa;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lwd;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Laoa;->c:Lanw;

    iget-object v1, p0, Laoa;->a:Lwd;

    iget v2, p0, Laoa;->b:I

    invoke-static {v0, v1, v2}, Lanw;->a(Lanw;Lwd;I)V

    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

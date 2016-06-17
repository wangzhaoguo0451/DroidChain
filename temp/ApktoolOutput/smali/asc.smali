.class final Lasc;
.super Lass;
.source "AddImageTransformMetaDataProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<",
        "Laqx;",
        "Laqx;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lass;-><init>(Lask;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lask;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lasc;-><init>(Lask;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p1, Laqx;

    if-nez p1, :cond_0

    iget-object v0, p0, Lass;->d:Lask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Laqx;->c(Laqx;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Laqx;->c()V

    :cond_1
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.class public Leqv;
.super Leqs;
.source "ProtoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Leqs",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final r:Lcom/squareup/wire/Wire;


# instance fields
.field private final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    sput-object v0, Leqv;->r:Lcom/squareup/wire/Wire;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Leqr;Ljava/lang/Class;Lagu;Lagt;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Leqr;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lagu",
            "<TT;>;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Leqs;-><init>(ILjava/lang/String;Ljava/util/Map;Leqr;Lagu;Lagt;)V

    .line 35
    iput-object p5, p0, Leqv;->q:Ljava/lang/Class;

    .line 37
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    iget-object v2, p0, Leqs;->o:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Leqs;->o:Ljava/util/Map;

    :cond_0
    iget-object v2, p0, Leqs;->o:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method protected final synthetic b(Lagp;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 25
    iget-object v0, p1, Lagp;->b:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p1, Lagp;->a:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Leqv;->r:Lcom/squareup/wire/Wire;

    iget-object v2, p0, Leqv;->q:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Leqv;->r:Lcom/squareup/wire/Wire;

    iget-object v1, p1, Lagp;->a:[B

    iget-object v2, p0, Leqv;->q:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    goto :goto_0
.end method

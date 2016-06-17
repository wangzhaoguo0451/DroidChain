.class public final Lahy;
.super Lcom/android/volley/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Lagu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lagu;Lagt;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lagt;)V

    .line 44
    iput-object p2, p0, Lahy;->l:Lagu;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lagu;Lagt;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lagt;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lahy;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected final a(Lagp;)Lags;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")",
            "Lags",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lagp;->a:[B

    iget-object v2, p1, Lagp;->b:Ljava/util/Map;

    invoke-static {v2}, Ld;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-static {p1}, Ld;->a(Lagp;)Lagi;

    move-result-object v1

    invoke-static {v0, v1}, Lags;->a(Ljava/lang/Object;Lagi;)Lags;

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lagp;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lahy;->l:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

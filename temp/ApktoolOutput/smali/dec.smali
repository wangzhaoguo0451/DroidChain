.class public final Ldec;
.super Leqv;
.source "FavoriteRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leqv",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v3, 0x0

    const-class v5, Lcom/wandoujia/api/proto/HttpResponse;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Leqv;-><init>(ILjava/lang/String;Ljava/util/Map;Leqr;Ljava/lang/Class;Lagu;Lagt;)V

    .line 53
    iput-object p3, p0, Ldec;->q:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)Ldec;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 30
    const-string v0, "http://apis.wandoujia.com/five/v2/favorites/%s/%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v0, "{itemType:%s, packageName:%s}"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v0, Ldec;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ldec;-><init>(ILjava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)Ldec;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const-string v0, "http://apis.wandoujia.com/five/v2/favorites/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v0, Ldec;

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ldec;-><init>(ILjava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)V

    return-object v0
.end method


# virtual methods
.method public final h()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ldec;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldec;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.class public final Lavk;
.super Lavl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavl",
        "<",
        "Lavk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lavl;-><init>()V

    const-string v0, "&t"

    const-string v1, "event"

    invoke-virtual {p0, v0, v1}, Lavk;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    return-void
.end method


# virtual methods
.method public final a(J)Lavk;
    .locals 3

    const-string v0, "&ev"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lavk;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lavk;
    .locals 1

    const-string v0, "&ec"

    invoke-virtual {p0, v0, p1}, Lavk;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    return-object p0
.end method

.method public final bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lavl;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lavk;
    .locals 1

    const-string v0, "&ea"

    invoke-virtual {p0, v0, p1}, Lavk;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lavk;
    .locals 1

    const-string v0, "&el"

    invoke-virtual {p0, v0, p1}, Lavk;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    return-object p0
.end method

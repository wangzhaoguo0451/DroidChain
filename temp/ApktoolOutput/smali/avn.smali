.class public final Lavn;
.super Lavl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavl",
        "<",
        "Lavn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lavl;-><init>()V

    const-string v0, "&t"

    const-string v1, "social"

    invoke-virtual {p0, v0, v1}, Lavn;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lavl;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.class final Lcaq;
.super Ljava/lang/Object;
.source "EnumAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/squareup/wire/ProtoEnum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/squareup/wire/ProtoEnum;

    check-cast p2, Lcom/squareup/wire/ProtoEnum;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    invoke-interface {p2}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

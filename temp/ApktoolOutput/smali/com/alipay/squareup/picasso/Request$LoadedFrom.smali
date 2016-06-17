.class public final enum Lcom/alipay/squareup/picasso/Request$LoadedFrom;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/squareup/picasso/Request$LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/squareup/picasso/Request$LoadedFrom;

.field public static final enum DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

.field public static final enum MEMORY:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

.field public static final enum NETWORK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;


# instance fields
.field final debugColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/squareup/picasso/Request$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->MEMORY:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    .line 20
    new-instance v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    const-string v1, "DISK"

    const/16 v2, -0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/squareup/picasso/Request$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    .line 21
    new-instance v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    const-string v1, "NETWORK"

    const/high16 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/squareup/picasso/Request$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->NETWORK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    sget-object v1, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->MEMORY:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->NETWORK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->$VALUES:[Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->debugColor:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/squareup/picasso/Request$LoadedFrom;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    return-object v0
.end method

.method public static values()[Lcom/alipay/squareup/picasso/Request$LoadedFrom;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->$VALUES:[Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    invoke-virtual {v0}, [Lcom/alipay/squareup/picasso/Request$LoadedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    return-object v0
.end method

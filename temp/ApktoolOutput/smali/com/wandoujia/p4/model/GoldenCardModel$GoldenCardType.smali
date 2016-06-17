.class public final enum Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;
.super Ljava/lang/Enum;
.source "GoldenCardModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

.field public static final enum APP:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

.field public static final enum WEBVIEW:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    const-string v1, "WEBVIEW"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->WEBVIEW:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    new-instance v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->APP:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    sget-object v1, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->WEBVIEW:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->APP:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->$VALUES:[Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->$VALUES:[Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    return-object v0
.end method

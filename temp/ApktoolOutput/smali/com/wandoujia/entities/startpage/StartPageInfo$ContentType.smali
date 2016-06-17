.class public final enum Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;
.super Ljava/lang/Enum;
.source "StartPageInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

.field public static final enum STARTPAGE:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;
    .annotation runtime Lcwj;
        a = "STARTPAGE"
    .end annotation
.end field

.field public static final enum SUBSCRIBE:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;
    .annotation runtime Lcwj;
        a = "SUBSCRIBE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    const-string v1, "SUBSCRIBE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->SUBSCRIBE:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    .line 44
    new-instance v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    const-string v1, "STARTPAGE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->STARTPAGE:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    sget-object v1, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->SUBSCRIBE:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->STARTPAGE:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->$VALUES:[Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->$VALUES:[Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    return-object v0
.end method

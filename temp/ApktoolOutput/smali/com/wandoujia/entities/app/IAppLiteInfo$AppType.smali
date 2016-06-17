.class public final enum Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;
.super Ljava/lang/Enum;
.source "IAppLiteInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

.field public static final enum APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

.field public static final enum GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;


# instance fields
.field private appType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    new-instance v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    const-string v1, "APP"

    const-string v2, "APP"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 156
    new-instance v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    const-string v1, "GAME"

    const-string v2, "GAME"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    sget-object v1, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->$VALUES:[Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput-object p3, p0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->appType:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;
    .locals 1
    .parameter

    .prologue
    .line 154
    const-class v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->$VALUES:[Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    return-object v0
.end method


# virtual methods
.method public final getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->appType:Ljava/lang/String;

    return-object v0
.end method

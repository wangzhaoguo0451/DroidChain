.class public final enum Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;
.super Ljava/lang/Enum;
.source "BackgroundServiceSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

.field public static final enum GAME_SUGGESTION:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

.field public static final enum PUSH:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

.field public static final enum SYNC:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

.field public static final enum TRAFFIC_STATICS:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

.field public static final enum USELESS_APP_SCAN:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

.field public static final enum WIFI_CONN:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    const-string v1, "WIFI_CONN"

    const-string v2, "setting_wifi_auto_connect"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->WIFI_CONN:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    .line 243
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    const-string v1, "TRAFFIC_STATICS"

    const-string v2, "setting_collect_data"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->TRAFFIC_STATICS:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    .line 244
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    const-string v1, "USELESS_APP_SCAN"

    const-string v2, "setting_scan_useless_app"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->USELESS_APP_SCAN:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    .line 245
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    const-string v1, "PUSH"

    const-string v2, "setting_push"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->PUSH:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    .line 246
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    const-string v1, "SYNC"

    const-string v2, "setting_sync"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->SYNC:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    .line 247
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    const-string v1, "GAME_SUGGESTION"

    const/4 v2, 0x5

    const-string v3, "setting_game_suggestion"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->GAME_SUGGESTION:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    .line 241
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    sget-object v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->WIFI_CONN:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->TRAFFIC_STATICS:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->USELESS_APP_SCAN:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->PUSH:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->SYNC:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->GAME_SUGGESTION:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->$VALUES:[Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

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
    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    iput-object p3, p0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->key:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public static synthetic access$300(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->key:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;
    .locals 1
    .parameter

    .prologue
    .line 241
    const-class v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->$VALUES:[Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->key:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;
.super Ljava/lang/Enum;
.source "PlayExpLogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum DOWNLOAD_ALL_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum DOWNLOAD_SINGLE_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum DOWNLOAD_SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum DOWNLOAD_TASK_CREATED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum JS_INJECTED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum JS_LOADED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum JS_LOG:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum JS_ONERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum JS_ONREADY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum JS_PLAY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum PLAYER_ENTER:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum PLAY_EXIT:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum PLAY_READY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum PLAY_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum WEB_LOADING_END:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

.field public static final enum WEB_LOADING_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "PLAY_START"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 180
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "PLAYER_ENTER"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAYER_ENTER:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 181
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "WEB_LOADING_START"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->WEB_LOADING_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 182
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "WEB_LOADING_END"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->WEB_LOADING_END:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 183
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "JS_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_LOADED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 184
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "JS_INJECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_INJECTED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 185
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "JS_ONREADY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_ONREADY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 186
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "JS_PLAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_PLAY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 187
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "JS_ONERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_ONERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 188
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "JS_LOG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_LOG:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 189
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "PLAY_READY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_READY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 190
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "PLAY_EXIT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_EXIT:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 191
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "DOWNLOAD_SINGLE_START"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_SINGLE_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 192
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "DOWNLOAD_ALL_START"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_ALL_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 193
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "DOWNLOAD_TASK_CREATED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_TASK_CREATED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 194
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    const-string v1, "DOWNLOAD_SUCCESS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    .line 178
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAYER_ENTER:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->WEB_LOADING_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->WEB_LOADING_END:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_LOADED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_INJECTED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_ONREADY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_PLAY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_ONERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->JS_LOG:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_READY:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_EXIT:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_SINGLE_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_ALL_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_TASK_CREATED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->DOWNLOAD_SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->$VALUES:[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

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
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;
    .locals 1
    .parameter

    .prologue
    .line 178
    const-class v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->$VALUES:[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    return-object v0
.end method

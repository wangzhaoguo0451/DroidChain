.class public final enum Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;
.super Ljava/lang/Enum;
.source "PlayerLogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum BLOCKING_END:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum BLOCKING_START:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum ENTER:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum ERROR:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum EXIT:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum LOADED:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum LOADING:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum PAUSE:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum PLAY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum READY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum SEEKING:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum SEEK_END:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum SEEK_START:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

.field public static final enum STOP:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->ENTER:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 90
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->READY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 91
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->PLAY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 92
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->PAUSE:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 93
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->LOADING:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 94
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "LOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->LOADED:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 95
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "BLOCKING_START"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->BLOCKING_START:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 96
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "BLOCKING_END"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->BLOCKING_END:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 97
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "SEEK_START"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->SEEK_START:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 98
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "SEEK_END"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->SEEK_END:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 99
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "SEEKING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->SEEKING:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 100
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "STOP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->STOP:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 101
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "EXIT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->EXIT:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 102
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    const-string v1, "ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->ERROR:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    .line 88
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->ENTER:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->READY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->PLAY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->PAUSE:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->LOADING:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->LOADED:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->BLOCKING_START:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->BLOCKING_END:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->SEEK_START:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->SEEK_END:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->SEEKING:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->STOP:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->EXIT:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->ERROR:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->$VALUES:[Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;
    .locals 1
    .parameter

    .prologue
    .line 88
    const-class v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->$VALUES:[Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    return-object v0
.end method

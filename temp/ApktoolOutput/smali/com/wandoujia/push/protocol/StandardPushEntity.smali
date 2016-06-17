.class public Lcom/wandoujia/push/protocol/StandardPushEntity;
.super Ljava/lang/Object;
.source "StandardPushEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHANNEL_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final DEVICE_ANDROID:I = 0x2

.field public static final DEVICE_PC:I = 0x1

.field public static final DEVICE_WEB:I = 0x4

.field public static final MSG_TYPE_COMMUNITY:I = 0x201

.field public static final MSG_TYPE_MARIO:I = 0x100

.field public static final MSG_TYPE_NORMAL:I = 0x0

.field public static final MSG_TYPE_NORMAL_V2:I = 0x1

.field public static final MSG_TYPE_NORMAL_V3:I = 0x2

.field public static final MSG_TYPE_SUBSCRIBE:I = 0x301


# instance fields
.field protected callback:Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;

.field protected destDid:Ljava/lang/String;

.field protected destType:I

.field protected destUid:Ljava/lang/String;

.field protected msgType:I

.field protected srcChannel:Ljava/lang/String;

.field protected srcDid:Ljava/lang/String;

.field protected srcType:I

.field protected srcUid:Ljava/lang/String;

.field protected test:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->callback:Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;

    return-object v0
.end method

.method public getDestDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destDid:Ljava/lang/String;

    return-object v0
.end method

.method public getDestType()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destType:I

    return v0
.end method

.method public getDestUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destUid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->msgType:I

    return v0
.end method

.method public getSrcChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcDid:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcType:I

    return v0
.end method

.method public getSrcUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcUid:Ljava/lang/String;

    return-object v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->test:Z

    return v0
.end method

.method public setCallback(Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->callback:Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;

    .line 143
    return-void
.end method

.method public setDestDid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destDid:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setDestType(I)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destType:I

    .line 183
    return-void
.end method

.method public setDestUid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destUid:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->msgType:I

    .line 207
    return-void
.end method

.method public setSrcChannel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcChannel:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setSrcDid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcDid:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSrcType(I)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcType:I

    .line 151
    return-void
.end method

.method public setSrcUid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcUid:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->test:Z

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StandardPushEntity{srcType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcDid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcDid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcChannel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->srcChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destDid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destDid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->destUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity;->callback:Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

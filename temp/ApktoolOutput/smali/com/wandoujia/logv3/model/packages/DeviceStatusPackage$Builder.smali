.class public final Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceStatusPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public active_app:Ljava/lang/String;

.field public airplane_mode_on:Ljava/lang/Boolean;

.field public battery:Ljava/lang/Integer;

.field public brightness:Ljava/lang/Integer;

.field public charging:Ljava/lang/Boolean;

.field public extra_msg:Ljava/lang/String;

.field public headphone_plugged:Ljava/lang/Boolean;

.field public location:Lcom/wandoujia/logv3/model/packages/Location;

.field public screen_locked:Ljava/lang/Boolean;

.field public trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

.field public velocity:Ljava/lang/Float;

.field public vibration_on:Ljava/lang/Boolean;

.field public volume:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 188
    if-nez p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 190
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->battery:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->battery:Ljava/lang/Integer;

    .line 191
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->charging:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->charging:Ljava/lang/Boolean;

    .line 192
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->screen_locked:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->screen_locked:Ljava/lang/Boolean;

    .line 193
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->airplane_mode_on:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->airplane_mode_on:Ljava/lang/Boolean;

    .line 194
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->active_app:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->active_app:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->volume:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->volume:Ljava/lang/Integer;

    .line 196
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->vibration_on:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->vibration_on:Ljava/lang/Boolean;

    .line 197
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->brightness:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->brightness:Ljava/lang/Integer;

    .line 198
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->location:Lcom/wandoujia/logv3/model/packages/Location;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->location:Lcom/wandoujia/logv3/model/packages/Location;

    .line 199
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->headphone_plugged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->headphone_plugged:Ljava/lang/Boolean;

    .line 200
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->velocity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->velocity:Ljava/lang/Float;

    .line 201
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->extra_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->extra_msg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final active_app(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->active_app:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public final airplane_mode_on(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->airplane_mode_on:Ljava/lang/Boolean;

    .line 241
    return-object p0
.end method

.method public final battery(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->battery:Ljava/lang/Integer;

    .line 217
    return-object p0
.end method

.method public final brightness(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->brightness:Ljava/lang/Integer;

    .line 273
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;-><init>(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final charging(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->charging:Ljava/lang/Boolean;

    .line 225
    return-object p0
.end method

.method public final extra_msg(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->extra_msg:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public final headphone_plugged(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->headphone_plugged:Ljava/lang/Boolean;

    .line 289
    return-object p0
.end method

.method public final location(Lcom/wandoujia/logv3/model/packages/Location;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->location:Lcom/wandoujia/logv3/model/packages/Location;

    .line 281
    return-object p0
.end method

.method public final screen_locked(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->screen_locked:Ljava/lang/Boolean;

    .line 233
    return-object p0
.end method

.method public final trigger_type(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 209
    return-object p0
.end method

.method public final velocity(Ljava/lang/Float;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->velocity:Ljava/lang/Float;

    .line 297
    return-object p0
.end method

.method public final vibration_on(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->vibration_on:Ljava/lang/Boolean;

    .line 265
    return-object p0
.end method

.method public final volume(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->volume:Ljava/lang/Integer;

    .line 257
    return-object p0
.end method

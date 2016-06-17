.class public final Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DevicePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DevicePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public android_id:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public cpu:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public is_root:Ljava/lang/Boolean;

.field public launcher_name:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public memory_size:Ljava/lang/Long;

.field public model:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public os_bit:Ljava/lang/Integer;

.field public os_version:Ljava/lang/String;

.field public rom_name:Ljava/lang/String;

.field public rom_version:Ljava/lang/String;

.field public screen:Ljava/lang/String;

.field public sdcard1_size:Ljava/lang/Long;

.field public sdcard2_size:Ljava/lang/Long;

.field public sdk_int:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/DevicePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 256
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_version:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdk_int:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdk_int:Ljava/lang/Integer;

    .line 260
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->model:Ljava/lang/String;

    .line 261
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->brand:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->is_root:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->is_root:Ljava/lang/Boolean;

    .line 263
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_version:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_name:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->launcher_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->launcher_name:Ljava/lang/String;

    .line 266
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->cpu:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->cpu:Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->screen:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->screen:Ljava/lang/String;

    .line 268
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->mac:Ljava/lang/String;

    .line 269
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imei:Ljava/lang/String;

    .line 270
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_bit:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_bit:Ljava/lang/Integer;

    .line 271
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->memory_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->memory_size:Ljava/lang/Long;

    .line 272
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard1_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard1_size:Ljava/lang/Long;

    .line 273
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard2_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard2_size:Ljava/lang/Long;

    .line 274
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->android_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->android_id:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imsi:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final android_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->android_id:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public final brand(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->brand:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DevicePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/DevicePackage;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/DevicePackage;-><init>(Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final cpu(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->cpu:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public final imei(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imei:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public final imsi(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imsi:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public final is_root(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->is_root:Ljava/lang/Boolean;

    .line 323
    return-object p0
.end method

.method public final launcher_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->launcher_name:Ljava/lang/String;

    .line 347
    return-object p0
.end method

.method public final mac(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->mac:Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public final memory_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->memory_size:Ljava/lang/Long;

    .line 395
    return-object p0
.end method

.method public final model(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->model:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public final os(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public final os_bit(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_bit:Ljava/lang/Integer;

    .line 387
    return-object p0
.end method

.method public final os_version(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_version:Ljava/lang/String;

    .line 291
    return-object p0
.end method

.method public final rom_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_name:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public final rom_version(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_version:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public final screen(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->screen:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public final sdcard1_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard1_size:Ljava/lang/Long;

    .line 403
    return-object p0
.end method

.method public final sdcard2_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard2_size:Ljava/lang/Long;

    .line 411
    return-object p0
.end method

.method public final sdk_int(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdk_int:Ljava/lang/Integer;

    .line 299
    return-object p0
.end method

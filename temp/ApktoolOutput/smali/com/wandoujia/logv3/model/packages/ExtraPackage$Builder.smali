.class public final Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ExtraPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ExtraPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

.field public app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

.field public card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

.field public content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

.field public device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

.field public device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

.field public download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

.field public feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

.field public game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

.field public open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

.field public resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

.field public snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

.field public timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 168
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    .line 170
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    .line 171
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    .line 172
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    .line 173
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    .line 174
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    .line 175
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    .line 176
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    .line 177
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 179
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    .line 180
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    .line 181
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    goto :goto_0
.end method


# virtual methods
.method public final app_status_package(Lcom/wandoujia/logv3/model/packages/AppStatusPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    .line 237
    return-object p0
.end method

.method public final app_usage_stat_package(Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    .line 277
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final card_package(Lcom/wandoujia/logv3/model/packages/CardPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    .line 189
    return-object p0
.end method

.method public final content_package(Lcom/wandoujia/logv3/model/packages/ContentPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    .line 205
    return-object p0
.end method

.method public final device_package(Lcom/wandoujia/logv3/model/packages/DevicePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    .line 197
    return-object p0
.end method

.method public final device_status_package(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    .line 253
    return-object p0
.end method

.method public final download_package(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    .line 245
    return-object p0
.end method

.method public final feed_package(Lcom/wandoujia/logv3/model/packages/FeedPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    .line 213
    return-object p0
.end method

.method public final game_launcher_package(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 261
    return-object p0
.end method

.method public final open_type_package(Lcom/wandoujia/logv3/model/packages/OpenTypePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    .line 229
    return-object p0
.end method

.method public final resource_package(Lcom/wandoujia/logv3/model/packages/ResourcePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    .line 221
    return-object p0
.end method

.method public final snaplock_settings_package(Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    .line 285
    return-object p0
.end method

.method public final timing_package(Lcom/wandoujia/logv3/model/packages/TimingPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    .line 269
    return-object p0
.end method

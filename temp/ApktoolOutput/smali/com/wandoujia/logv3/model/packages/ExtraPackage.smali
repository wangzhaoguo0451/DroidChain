.class public final Lcom/wandoujia/logv3/model/packages/ExtraPackage;
.super Lcom/squareup/wire/Message;
.source "ExtraPackage.java"


# instance fields
.field public final app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
    .end annotation
.end field

.field public final app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
    .end annotation
.end field

.field public final card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public final content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public final device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
    .end annotation
.end field

.field public final download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
    .end annotation
.end field

.field public final feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
    .end annotation
.end field

.field public final open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
    .end annotation
.end field

.field public final timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 90
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p1, p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 109
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 110
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->hashCode:I

    .line 128
    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/CardPackage;->hashCode()I

    move-result v0

    .line 130
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_package:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/FeedPackage;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_status_package:Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->timing_package:Lcom/wandoujia/logv3/model/packages/TimingPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TimingPackage;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->app_usage_stat_package:Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->snaplock_settings_package:Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 142
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->hashCode:I

    .line 144
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 129
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 130
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 131
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 132
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 133
    goto :goto_4

    :cond_7
    move v0, v1

    .line 134
    goto :goto_5

    :cond_8
    move v0, v1

    .line 135
    goto :goto_6

    :cond_9
    move v0, v1

    .line 136
    goto :goto_7

    :cond_a
    move v0, v1

    .line 137
    goto :goto_8

    :cond_b
    move v0, v1

    .line 138
    goto :goto_9

    :cond_c
    move v0, v1

    .line 139
    goto :goto_a

    :cond_d
    move v0, v1

    .line 140
    goto :goto_b
.end method

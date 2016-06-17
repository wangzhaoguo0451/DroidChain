.class public final Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SnaplockSettingsPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public daily_wallpaper_state:Ljava/lang/Boolean;

.field public display_fahrenheit:Ljava/lang/Boolean;

.field public display_shortcuts_on_front_page_switch:Ljava/lang/Boolean;

.field public language:Ljava/lang/String;

.field public lockscreen_password_switcher:Ljava/lang/Boolean;

.field public lockscreen_password_type:Ljava/lang/String;

.field public lockscreen_switch:Ljava/lang/Boolean;

.field public lockscreen_system_password:Ljava/lang/Boolean;

.field public need_password_when_camera_quick_unlock:Ljava/lang/Boolean;

.field public notification_switch:Ljava/lang/Boolean;

.field public notifications_brighten_screen_switch:Ljava/lang/Boolean;

.field public screen_lock_sound_switch:Ljava/lang/Boolean;

.field public shake_when_password_unlock:Ljava/lang/Boolean;

.field public show_battery_percentage_switch:Ljava/lang/Boolean;

.field public use_24_hour_format_switch:Ljava/lang/Boolean;

.field public wallpaper_source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 221
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->lockscreen_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_switch:Ljava/lang/Boolean;

    .line 223
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->show_battery_percentage_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->show_battery_percentage_switch:Ljava/lang/Boolean;

    .line 224
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->use_24_hour_format_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->use_24_hour_format_switch:Ljava/lang/Boolean;

    .line 225
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->display_fahrenheit:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->display_fahrenheit:Ljava/lang/Boolean;

    .line 226
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->notification_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->notification_switch:Ljava/lang/Boolean;

    .line 227
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->screen_lock_sound_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->screen_lock_sound_switch:Ljava/lang/Boolean;

    .line 228
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->display_shortcuts_on_front_page_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->display_shortcuts_on_front_page_switch:Ljava/lang/Boolean;

    .line 229
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->notifications_brighten_screen_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->notifications_brighten_screen_switch:Ljava/lang/Boolean;

    .line 230
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->wallpaper_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->wallpaper_source:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->lockscreen_password_switcher:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_password_switcher:Ljava/lang/Boolean;

    .line 232
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->daily_wallpaper_state:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->daily_wallpaper_state:Ljava/lang/Boolean;

    .line 233
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->shake_when_password_unlock:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->shake_when_password_unlock:Ljava/lang/Boolean;

    .line 234
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->need_password_when_camera_quick_unlock:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->need_password_when_camera_quick_unlock:Ljava/lang/Boolean;

    .line 235
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->lockscreen_password_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_password_type:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->language:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;->lockscreen_system_password:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_system_password:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final daily_wallpaper_state(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->daily_wallpaper_state:Ljava/lang/Boolean;

    .line 325
    return-object p0
.end method

.method public final display_fahrenheit(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->display_fahrenheit:Ljava/lang/Boolean;

    .line 269
    return-object p0
.end method

.method public final display_shortcuts_on_front_page_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->display_shortcuts_on_front_page_switch:Ljava/lang/Boolean;

    .line 293
    return-object p0
.end method

.method public final language(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->language:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public final lockscreen_password_switcher(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_password_switcher:Ljava/lang/Boolean;

    .line 317
    return-object p0
.end method

.method public final lockscreen_password_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_password_type:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public final lockscreen_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_switch:Ljava/lang/Boolean;

    .line 245
    return-object p0
.end method

.method public final lockscreen_system_password(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->lockscreen_system_password:Ljava/lang/Boolean;

    .line 365
    return-object p0
.end method

.method public final need_password_when_camera_quick_unlock(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->need_password_when_camera_quick_unlock:Ljava/lang/Boolean;

    .line 341
    return-object p0
.end method

.method public final notification_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->notification_switch:Ljava/lang/Boolean;

    .line 277
    return-object p0
.end method

.method public final notifications_brighten_screen_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->notifications_brighten_screen_switch:Ljava/lang/Boolean;

    .line 301
    return-object p0
.end method

.method public final screen_lock_sound_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->screen_lock_sound_switch:Ljava/lang/Boolean;

    .line 285
    return-object p0
.end method

.method public final shake_when_password_unlock(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->shake_when_password_unlock:Ljava/lang/Boolean;

    .line 333
    return-object p0
.end method

.method public final show_battery_percentage_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->show_battery_percentage_switch:Ljava/lang/Boolean;

    .line 253
    return-object p0
.end method

.method public final use_24_hour_format_switch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->use_24_hour_format_switch:Ljava/lang/Boolean;

    .line 261
    return-object p0
.end method

.method public final wallpaper_source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SnaplockSettingsPackage$Builder;->wallpaper_source:Ljava/lang/String;

    .line 309
    return-object p0
.end method
